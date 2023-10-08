package usecase

import "github.com/devfullcycle/20-CleanArch/internal/entity"

type ListOrderUseCase struct {
	OrderRepository entity.OrderRepositoryInterface
}

func (c *ListOrderUseCase) Execute() ([]OrderOutputDTO, error) {
	orders, err := c.OrderRepository.List()
	if err != nil {
		return nil, err
	}
	listDto := c.convertToDtoList(orders)
	return listDto, nil
}

func NewListOrderUseCase(OrderRepository entity.OrderRepositoryInterface) *ListOrderUseCase {
	return &ListOrderUseCase{
		OrderRepository: OrderRepository,
	}
}

func (c *ListOrderUseCase) convertToDtoList(orders []entity.Order) []OrderOutputDTO {
	var result []OrderOutputDTO
	for _, o := range orders {
		dto := OrderOutputDTO{
			ID:         o.ID,
			Price:      o.Price,
			Tax:        o.Tax,
			FinalPrice: o.FinalPrice,
		}
		result = append(result, dto)
	}
	return result
}
